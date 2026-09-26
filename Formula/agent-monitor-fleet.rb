class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.314.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.314.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "fb450f5e771ed7c4cd8938e1addce117d221f74ad0ffda0d19db976717156cb3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.314.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "bb397983c1a244e5e8e731157da4bbb056a43601ed0b7a3bb7702734ff73e3d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.314.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4568376f132254248e03351454f1f6aae7c5843178f8bc2f95252c441cc3482a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.314.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f50769127fb247b1ed0926b523ad0e4ecba6e1ece917071f07e143a1c42e022c"
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
