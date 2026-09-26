class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.314.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.314.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ba516a903a26808141fe23b2b7f1634f7ce089d106c22d69c46bd1fb3f8e8b19"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.314.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6442fe33c7219e3b7cfe6f6901db06ff82d3672241b1cbfcb9dfd43ed4657120"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.314.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4408aaa79ebf69d0277c27fb66f43ce65ed54d10992e96ece3c3b18c4ccc0753"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.314.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "29db65034ba92260bffce9b64eb99f14598254d0e1edb75ef8d175f2f19c8397"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
