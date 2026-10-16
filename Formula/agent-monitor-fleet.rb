class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.382.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.382.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6ddf6cb673de6eb3d797f930aca2d51a68108cc05898ab654b1a48625c28c35b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.382.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3b6b33c9a5392e042604505ed7cca00d0f18086ba0b6c1e98af5bc8bcc02e5fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.382.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "62385d1ef0dff03c98083b35b536ed7f7a8daca773cc462eed6ba91251d96b0d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.382.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8a1fb1b6d6d564e3ec8ba0fbc34cbd281d53dfd2420da28d01bbf7799205dda7"
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
