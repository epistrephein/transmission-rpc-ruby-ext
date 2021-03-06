module Transmission
  class Fields
    class TorrentGet < Transmission::Fields
      ATTRIBUTES = [
        { field: 'id' },
        { field: 'activityDate' },
        { field: 'addedDate' },
        { field: 'bandwidthPriority' },
        { field: 'comment' },
        { field: 'corruptEver' },
        { field: 'creator' },
        { field: 'dateCreated' },
        { field: 'desiredAvailable' },
        { field: 'doneDate' },
        { field: 'downloadDir' },
        { field: 'downloadedEver' },
        { field: 'downloadLimit' },
        { field: 'downloadLimited' },
        { field: 'error' },
        { field: 'errorString' },
        { field: 'eta' },
        { field: 'etaIdle' },
        { field: 'files' },
        { field: 'fileStats' },
        { field: 'hashString' },
        { field: 'haveUnchecked' },
        { field: 'haveValid' },
        { field: 'honorsSessionLimits' },
        { field: 'isFinished' },
        { field: 'isPrivate' },
        { field: 'isStalled' },
        { field: 'leftUntilDone' },
        { field: 'magnetLink' },
        { field: 'manualAnnounceTime' },
        { field: 'maxConnectedPeers' },
        { field: 'metadataPercentComplete' },
        { field: 'name' },
        { field: 'peer-limit' },
        { field: 'peers' },
        { field: 'peersConnected' },
        { field: 'peersFrom' },
        { field: 'peersGettingFromUs' },
        { field: 'peersSendingToUs' },
        { field: 'percentDone' },
        { field: 'pieces' },
        { field: 'pieceCount' },
        { field: 'pieceSize' },
        { field: 'priorities' },
        { field: 'queuePosition' },
        { field: 'rateDownload' },
        { field: 'rateUpload' },
        { field: 'recheckProgress' },
        { field: 'secondsDownloading' },
        { field: 'secondsSeeding' },
        { field: 'seedIdleLimit' },
        { field: 'seedIdleMode' },
        { field: 'seedRatioLimit' },
        { field: 'seedRatioMode' },
        { field: 'sizeWhenDone' },
        { field: 'startDate' },
        { field: 'status' },
        { field: 'trackers' },
        { field: 'trackerStats' },
        { field: 'totalSize' },
        { field: 'torrentFile' },
        { field: 'uploadedEver' },
        { field: 'uploadLimit' },
        { field: 'uploadLimited' },
        { field: 'uploadRatio' },
        { field: 'wanted' },
        { field: 'webseeds' },
        { field: 'webseedsSendingToUs' }
      ].freeze
    end
  end
end
