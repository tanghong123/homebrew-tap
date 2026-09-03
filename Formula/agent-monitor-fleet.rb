class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.145.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.145.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "fd324e2391e2b4afdea42c4475b70a42bac45f41fcd3c0338fc5c5faf0f77881"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.145.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e1fb56cfdf1588e0c434982ad3f75bbb6a433912f820134fd81f011398970e6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.145.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "57977aa5fa8f5ee0d07dd9ab2448971e2557a49906755180f1f21a5ba33a26a7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.145.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "560022fe6343032c1885970644e577432ea1d2a38dc78f15844fab0253cbfb25"
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
