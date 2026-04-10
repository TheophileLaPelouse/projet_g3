from peak import Agent, OneShotBehaviour, Message
  
class lol:
    a=2
    b=3
    
class sender(Agent):
    class SendHelloWorld(OneShotBehaviour):
        async def run(self):
            msg = Message(to="harry@localhost")
            msg.body = lol()
            await self.send(msg)
            await self.agent.stop()

    async def setup(self):
        self.add_behaviour(self.SendHelloWorld())