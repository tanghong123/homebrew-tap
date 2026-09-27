class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.315.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.315.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "12b15bd568d5a8e0eabab18e5bf16ea12842739c17a00021c2000874753efde1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.315.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "dfff4ca44a8c777196cd633f750853eb590504f32f9368a914b21fb13f76f4de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.315.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "870b78ff32cd157a095c6f4194d53329cbc9281375ca9d53161034e09644612f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.315.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20a08436339ba0bedae2a3bf880e5e738234b7f64055b4547ae870c6b9d4b73e"
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
