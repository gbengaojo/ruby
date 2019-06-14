require 'socket'

class Server
  def initialize(socket_address, socket_port)
    @server_socket = TCPServer.open(socket_port, socket_address)

    @connections_details = Hash.new
    @connected_clients = Hash.new

    @connections_details[:server] = @server_socket
    @connections_details[:clients] = @connected_clients

    puts 'Started server......'
    run
  end
