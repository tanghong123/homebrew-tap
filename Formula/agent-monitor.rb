class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.368.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.368.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6fc8448e4ac7cd1bc06d03c9c939bb71d15a401cfd9d36cbb30b3c069bbea006"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.368.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "bbc210e591fa65d94c629f61db32ac775ca33bdeba9de8e4df682b58e97a88b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.368.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9964251e2e97da7cbd0760b6c4421d72d5ab283b9964a90b6372b12dcc826803"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.368.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "179b0e0fdd43b4039017fb52cbe86c8da69b64f60196776dea118a30938a1d7b"
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
