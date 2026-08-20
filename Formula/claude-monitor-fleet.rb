class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.2/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "55a4add02dce90cc16b5a24b3094c7085ac935b2f68fc869d2b2058ba4484f49"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.2/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7d2b81939f473d40c5d6b77f719fa1896276230495cde078dd02ba17ef53fa6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.2/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b34273b11754afbf38c4e15a92e19fb31b64e7929662527d9a2275e5892f7d54"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.2/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7988036503ea07aaa3f000dd73b93f30501a24a21e77d0d9746fa2478046ecbf"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
