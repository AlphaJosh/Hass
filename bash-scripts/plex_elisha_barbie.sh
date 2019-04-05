

# get list of clients
curl -i -s -k  -X 'GET' \
    -H 'X-Plex-Client-Identifier: 12345678-abab-4bc3-86a6-809c4901fb87' \
        'http://192.168.178.10:32400/clients'

# get list of playlists
curl -i -s -k  -X 'GET' \
    -H 'X-Plex-Client-Identifier: 12345678-abab-4bc3-86a6-809c4901fb87' \
    'http://192.168.178.10:32400/playlists/all?type=15&X-Plex-Container-Start=0&X-Plex-Container-Size=50'

# create playqueue playlist
curl -i -s -k  -X 'POST' \
    -H 'X-Plex-Client-Identifier: 12345678-abab-4bc3-86a6-809c4901fb87'  \
    'http://192.168.178.10:32400/playQueues?playlistID=181334&amp;shuffle=0&amp;type=audio&amp;uri=library:///item/%2Fplaylists%2F181334%2Fitems&amp;continuous=0'

curl -i -s -k  -X 'GET' \
    -H 'X-Plex-Client-Identifier: 12345678-abab-4bc3-86a6-809c4901fb87' -H 'X-Plex-Target-Client-Identifier: 99999993-ba46-40ff-80ff-999999999999' \
    'http://192.168.178.10:3005/player/playback/playMedia?protocol=http&amp;address=192.168.178.1009&amp;key=/library/metadata/170872&amp;offset=0&amp;commandID=1&amp;port=32400&amp;containerKey=/playQueues/2045?own=1&window=200&amp;type=music&amp;machineIdentifier=1231231231231231231231231231231231231232'