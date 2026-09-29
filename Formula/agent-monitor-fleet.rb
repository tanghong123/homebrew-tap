class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.326.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.326.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b9c246379348bf94c222e770ccc60f4636457039374065c3516b18f6b9481aa9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.326.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "744603ded138d4e7807f5fd27c448896e7211f9fa4d3313a087a6eaa77c46368"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.326.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c154369791c4f4dea76cd167e169806a4c06af473b50d3dde8e2f9f443ad2d53"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.326.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "758fa730784674d0057c3426f44e0bfe22776be6fa5fbe011592469f2a6fcb9f"
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
