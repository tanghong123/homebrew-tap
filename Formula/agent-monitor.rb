class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.187.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.187.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0e487e299cca85a9103a36c3733fb81e053dba03e6755b079b06fad7181d300e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.187.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f0c0d1e3450e7e071dd1e38a3ad2b9090f39f9c21dbc18d46d3b0020e2d4d883"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.187.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e76227a723135b969ddc959cc79dab9dd6c64339c965975b402248dee5327c71"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.187.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "234156dd0e76b8a54ddebd91f287780f7a247282bbb6ba1f70d0fc7889cb5646"
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
