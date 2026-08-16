class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.91.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.91.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e67449363d28c6f99a8e26873778a62e5bba8576928fb5ff79fd779cce5b5c9c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.91.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d82ad191106cbd4d9818b9498468f588e2a28344f791ca5f7fa77b176a0730d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.91.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd177f027add946c57601580b8da6e412a5677c4b13efc9ad236e20ff21f6595"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.91.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f50b2112fc726db476e6c7c90d5b5046f168f1c03019cf02678ca56e5d30c883"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
