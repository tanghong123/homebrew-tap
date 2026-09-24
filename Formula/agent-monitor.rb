class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.298.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.298.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d109baae77517dca93890bccf9d80752ab721e5a7b39037d80b5b2a64f9d0478"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.298.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "72c416e2f386e63c151a78aa731031b8c17d132a93776bdf77ecc7a4ff4391f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.298.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bbcfc6516d1ae3908ee58a867b88b9d6679f9c6c36f2e50c74e0440a8f940101"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.298.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "acdaaf0c3a14629bd93a6e0e1e0a9c32a723e53de3e156e9382733f5ba4906fe"
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
