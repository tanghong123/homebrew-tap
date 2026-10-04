class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.345.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.345.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ea9e727f800416ad401e7e9bf57f62f0d3de1fd2d73eba8136ca49794fa29d82"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.345.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "fb95ba7e879936ce5d5e54b7afaf66a375f312262d105872ccaff622a69c9c49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.345.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "843d706521e268a5a817b876b0fed231875cca58801e03bc02211e901d7f875f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.345.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6d5daeba20410ca26a4a7dde0f44e2a4510cb31f1f6b82a189c0e7b4db9af1c"
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
