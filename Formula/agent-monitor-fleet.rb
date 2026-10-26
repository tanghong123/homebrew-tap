class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.427.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.427.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b333788725fc834f9ee61bc375d190bf44976cf422fe88a00415b6d9fb1cad96"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.427.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6f3ae0382c13921f3863dbc11cb7adb15f93ce777dac84f2da11bc9470ae9aaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.427.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "957542671645ff5b7f5b87bc3ca1df14418ed6b567c71d0cbbaa5cb64ed4ad90"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.427.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2f960743701cfd6e0abbbcc3d14331d240e9a9316c8626dce8458f04f13a352e"
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
