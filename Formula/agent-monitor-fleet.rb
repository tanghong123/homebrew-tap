class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.444.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.444.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d1c4100266d7c73ab3761ca8eee13e8950b4dc8c0a0c0083d6b6a69a48d17d19"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.444.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "ec07618b17210b69bd244d729810e1ae7bfe83cc788e22e2b5a29d136c888c5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.444.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4702963cb4341c4cfa78dffb50a4c9988b3bce31e797fca4d1458b4e96eb6714"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.444.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e504b5b1ab6527e9aa64c4e537f4345ade020f20b5416294a0236200ff580211"
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
