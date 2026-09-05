class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.193.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.193.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c8331041b08d2ae42ee3530f5349097d68326885b5e9ea796801a92b3a4feb55"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.193.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "aa792d82eccc70de1f252e0007402a3f4594661d22a60e24bbffce877989cd16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.193.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d455fa56a8a700882f4c4720b413ed6afaef1e4f5220371eea744bec9ccf039d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.193.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "97a699065c09f0826316060ff347e8f3c1287a35caa575c32d678b6ac791d28d"
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
