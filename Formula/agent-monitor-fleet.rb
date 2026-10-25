class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.422.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.422.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "537cbadddcdc962f5a05b0462cbfa20f309e0714793f38cd1ca9f2763a41ef6e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.422.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "51c536f6ab25782a48edd45ca0c1231c0de461016e18b2f815f6762641dc7055"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.422.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "feb3512075dc9fa4b19d3647469840d2b2dba809bdb4ae6754593abfd50c6281"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.422.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc88f43137089be6abaf2a4fe569e6ad32e690c48b71c930447f1d9743043dd2"
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
