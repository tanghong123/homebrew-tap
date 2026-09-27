class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.315.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.315.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f462058b3e7b4008ffe784d85dcffe175212fd3d316164b87866a8d626f4191b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.315.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5c67bae55e6b5b61f2431a9ba98d836ed85603bad825600972878c654c5f1ed7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.315.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c70ff009aef5835fdecd54462b335724eb048c7319454f2ea65fc956d8b12993"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.315.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bf805ac44e4e5930480d8de58f5e3f38d6d84dafa51b95a0f66d25c6f12528e9"
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
