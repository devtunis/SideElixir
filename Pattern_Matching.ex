conn = 
%{
  id: "req_92831",
  path: "/api/users",
  metadata: %{
    request: %{timeout: 5000, retry: 2, secure: true},
    server: %{name: "phoenix-01", version: "1.8.0", region: "eu-west"}
  },
  params: %{
    user: %{
      id: 42,
      profile: %{
        first_name: "Ali",
        last_name: "Developer",
        country: %{
          name: "Tunisia",
          city: "Tunis",
          coordinates: %{lat: 36.8065, lng: 10.1815}
        }
      },
      username: "ali_dev",
      settings: %{
        language: "ar",
        theme: "dark",
        notifications: %{push: false, email: true, sms: true}
      }
    },
    conf: "axios[request]",
    game: %{
      match: %{
        id: 9182,
        score: %{home: 3, away: 2},
        players: [
          %{id: 1, name: "Player One", position: "ST"},
          %{id: 2, name: "Player Two", position: "GK"}
        ]
      },
      name: "PES",
      version: 2026,
      platform: %{name: "PlayStation", model: "PS5"}
    }
  },
  headers: %{
    "authorization" => "Bearer abc123",
    "content-type" => "application/json",
    "user-agent" => "Mozilla/5.0"
  },
  method: "POST"
}

test Pattern Matching
