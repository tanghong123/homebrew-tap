class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.161.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.161.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "09f40bb1432fdde881be98533c87dc134cf3a3962807bc5220abf9e95d05cd72"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.161.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cb9c59f6b58b5d697cf81dbb391def52e2da39562b66e99dc524e03f675b7764"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.161.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "da7ed8f4aa0cc0b321b873fa308e1d8ad9846cc49479d941663be65d02cb6765"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.161.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f3b6f77087d8cf9fb669692c3ec93472e912296c8cef60bb2bc15edca955b30a"
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
