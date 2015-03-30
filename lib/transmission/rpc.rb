require File.join(File.dirname(__FILE__), 'rpc', 'connector')

module Transmission
  class RPC

    attr_accessor :session, :connector

    def initialize(options = {})
      @connector = Connector.new options
    end

    def get_session(options = {})
      fields = Transmission::Fields::SessionGet.new(options[:fields])
      arguments = {fields: fields.to_fields}
      @connector.post method: 'session-get', arguments: arguments
    end

    def set_session(arguments)
      @connector.post method: 'session-set', arguments: arguments
    end

    def get_session_stats(options = {})
      fields = Transmission::Fields::SessionStats.new(options[:fields])
      arguments = {fields: fields.to_fields}
      @connector.post method: 'session-stats', arguments: arguments
    end

    def close_session
      @connector.post method: 'session-close'
    end

    def test_port
      @connector.post method: 'port-test'
    end

    def blocklist
      @connector.post method: 'blocklist-update'
    end

    def get_torrent(ids = nil, options = {})
      fields = Transmission::Fields::TorrentGet.new(options[:fields])
      arguments = {fields: fields.to_fields}
      arguments[:ids] = ids if ids.is_a?(Array)
      @connector.post method: 'torrent-get', arguments: arguments
    end

    def set_torrent(arguments)
      @connector.post method: 'torrent-set', arguments: arguments
    end

    def add_torrent(arguments = {})
      arguments = Transmission::Arguments::TorrentAdd.new(arguments)
      @connector.post method: 'torrent-add', arguments: arguments.to_arguments
    end

    def remove_torrent(ids, delete_local_data = false)
      @connector.post method: 'torrent-remove', arguments: {ids: ids, 'delete-local-data' => delete_local_data}
    end

    def free_space
      @connector.post method: 'free-space'
    end

    def start_torrent

    end

    def start_torrent_now

    end

    def stop_torrent

    end

    def verify_torrent

    end

    def re_announce

    end

    def set_torrent_location

    end

    def rename_torrent_path

    end

    def move_up_torrent

    end

    def move_down_torrent

    end

    def move_top_torrent

    end

    def move_bottom_torrent

    end

  end
end