class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.293.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.293.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "97181ab82fdeace116a5c776b323b76854dbc6a87680aa3295cfb5c843ec79c9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.293.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "54f32a2364087813cc0af392c6639cf20862d5d676cf1d42cd584d9709e97cde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.293.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "00531ed35230979cd96ced109e0772489de8876c34dbfe0206c6b22c8ae1bb1f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.293.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aeb03bf5701d392b7a7a14ed0b036c8358ec2241bff0be20ec1c39c16cf4036c"
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
