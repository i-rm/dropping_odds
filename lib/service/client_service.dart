import 'package:grpc/grpc.dart';
import 'package:dropping_odds/proto/service.pb.dart';
import 'package:dropping_odds/proto/service.pbgrpc.dart';

//Defines logic to interface with a server
class ClientService {
  //GetOddsRequest data structure
  ClientRequest req = ClientRequest();
  //Client to communicate with server
  static ClientServiceClient? client;

  //Constuctor get user name
  ClientService(ClientRequest req) {
    //Fill two field name and id of user structure with acquired name
    //Static so it will be the same every time wi will call it
    client = ClientServiceClient(ClientChannel("188.93.210.165", //"10.0.2.2",
        port: 3150,
        options: ChannelOptions(
          credentials:
              ChannelCredentials.insecure(), //because we running it over https
        )));
  }
  // recieveMessage will emit a stream of rpc Message type inside of it
  Stream<ClientResponse> recieveRequest() async* {
    //rpc message Connect
    ClientRequest connect = ClientRequest();

    //Get all messages from rpc CreateStream service
    await for (var odds in client!.client(connect)) {
      yield odds;
    }
  }
}
