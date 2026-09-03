class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.144.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.144.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "9d711b57d472d516fd20bcbaeb0ba5f29f36aee7f37498ae19d812adb726a74a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.144.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b5ad4724ab2709ae9af5d415b14a0a2f656997dfa8513d99fff4bbe661dc0555"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.144.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "76c3d5936af6ca0023b5cca82cc96dbb1024d3286e79da4496a28fc80e375234"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.144.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d80a03ef00396e51c168d018822182fe227f2136d740c3120b44247826c22ffc"
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
