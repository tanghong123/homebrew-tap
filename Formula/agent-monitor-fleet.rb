class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.219.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.219.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "be747f752e9e71c1de3ea2b30327d9805bdc752a14be5f046df13311c75038dd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.219.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "51447515d059149d9a5e0b004ec4cde921c1a147e42cc7c690bf0e8af07f161a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.219.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "52da90c0f15cdc3e38dfd92fe982fb53a8a48a166918d40a7954f9858fe8ae89"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.219.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "81f9b8ce3e6cab21cbf767d76457519d2aca814a190f79688fa7ab562be60d1f"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
    bin.install_symlink bin/"agent-monitor-fleet" => "claude-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
