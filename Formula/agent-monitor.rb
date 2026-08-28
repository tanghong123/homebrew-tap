class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.110.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.110.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e45d38ef7bc4ba80ee21907af9360b4f492dba7e1e4f36e50ade4f52010a513f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.110.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f1abfe6ef8ada6a3b501bfddc7af8016170642f6266cdc25aeb922edcfcc48f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.110.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cec2dacf56d6a087b45af7586c38eda77e80c918bea2d8fe67f28ee00c4ccac3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.110.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "db4687baa65c82de3d1a8bfced5f915b342f6f134f9960c5388582386c771209"
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
