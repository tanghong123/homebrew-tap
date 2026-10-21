class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.399.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.399.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c96c783cdd308a7b96c220a1922c043e6588aa3b07bc4176a121e716cf33ee3f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.399.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9926f28b62f2f0675b4dde2ae3d59a9f8feb6a412b8f07b41bfcc3d7ab3b7559"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.399.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "28a4d0c1ae1fb870705990e43e9dba754278a13a7440feedfbfec6ee7248e4f4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.399.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ff101eb7de3ce9684e1bd008d3ae9c4c24cd9cf2818f425c5818d86286e5c6cf"
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
