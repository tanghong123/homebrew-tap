class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.2/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4309be5abf8b9767a928f401de1a591336e770c0c96a12959ee1a71bb1e1b503"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.2/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e8a169f96ad223a5d93d9c34211271d5b82553d28110c86fc7c024479f524116"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.2/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f9963dfe3bcf9d4408cd7a32db4edd2d94bf9fad10a07f1111aec4267d02c71e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.2/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "272f97319e8e1142b25245413604bb51489604b0a2263c1f010b017c0fc303fa"
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
