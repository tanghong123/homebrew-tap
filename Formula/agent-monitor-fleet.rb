class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.335.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.335.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "79cfb66979627e95ddf2cec2a86d7e13a5df25b9c81ac344304c73f415349f33"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.335.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5eb072493085afd25f1a17fe3bf9a88bc2421d2ddf54809fe839191717dc36a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.335.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eff6de2739341fb237f5fbdd6cb53d495b323a03021de6c8fbb0513ab1b15624"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.335.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20a0e05ac65ac18ca89bc00f70e0ade8760db4aa7bf93dd0dfedc2af5b77e378"
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
