/** Sender class. Can be used to send a command to the server.
 *  The receiver will acknowledge the command by calling Ack().
 *  \startuml
 *    Sender->Receiver  : Command()
 *    Sender<--Receiver : Ack()
 *  \enduml
 */
class Sender
{
  public:
    /** Acknowledgment from server */
    void Ack(bool ok);
};
 
/** Receiver class. Can be used to receive and execute commands.
 *  After execution of a command, the receiver will send an acknowledgment
 * @todo TOOOOOO
 * @startuml{myimage.png} "Image Caption" width=5cm
 * Алиса -> Боб: Hello 
 * @enduml
 */
class Receiver
{
  public:
    /** Executable a command on the server */
    void Command(int commandId);
};