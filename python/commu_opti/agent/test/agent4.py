# Standard library imports
from asyncio import sleep

# Reader imports
from peak import Agent, JoinCommunity, LeaveCommunity, Message, OneShotBehaviour


class agent4(Agent):
    class HelloWorld(OneShotBehaviour):
        async def run(self):
            groups_tree = [
                "group1", 
                "group1/group2", 
                "group2",
            ]
            for groups_branch in groups_tree:
                print(f"Joining {groups_branch}...")
                await self.wait_for(
                    JoinCommunity(groups_branch, "conference." + self.agent.jid.domain)
                )
                msg = Message(to=f"{groups_branch}@conference.{self.agent.jid.domain}")
                msg.body = "Hello World"
                await self.send_to_community(msg)
                await sleep(1)
            for groups_branch in groups_tree:
                msg = Message(to=f"{groups_branch}@conference.{self.agent.jid.domain}")
                msg.body = "Goodbye World"
                await self.send_to_community(msg)
                await self.wait_for(
                    LeaveCommunity(groups_branch, "conference." + self.agent.jid.domain)
                )
                await sleep(1)
            await self.agent.stop()

    async def setup(self):
        self.add_behaviour(self.HelloWorld())