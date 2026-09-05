class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.186.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.186.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0ce9a33a843799e27c35644621e03693e03bd06b996f82ac28702899ced751e4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.186.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "882bf6f01f7bfe6b9a2af036690c5e7a854b3f9787e51b63b97accb36543ce44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.186.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "70000e40f757b30f8d61135c60e5e4f58f4e34f648270781ed006c1f8e20be8c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.186.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6028b9c097c952aab815c092128db089b49755d46819d48991af2fc7db5bbeee"
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
