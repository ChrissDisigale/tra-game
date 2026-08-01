import Foundation
import AppKit
import CoreGraphics

let root = FileManager.default.currentDirectoryPath
let sourcePath = (root as NSString).appendingPathComponent("USER_MANUAL.md")
let outputPath = (root as NSString).appendingPathComponent("KodiQuest-Tanzania-User-Manual.pdf")
let markdown = try String(contentsOfFile: sourcePath, encoding: .utf8)
let lines = markdown.components(separatedBy: .newlines)

struct Block { let text: String; let kind: String }
var sections: [(String, [Block])] = []
var currentTitle = ""
var current: [Block] = []
for line in lines {
    if line.hasPrefix("## ") {
        if !currentTitle.isEmpty { sections.append((currentTitle, current)) }
        currentTitle = String(line.dropFirst(3)); current = []
    } else if line.hasPrefix("# ") || line.hasPrefix("### ") {
        let value = line.hasPrefix("### ") ? String(line.dropFirst(4)) : String(line.dropFirst(2))
        current.append(Block(text: value, kind: line.hasPrefix("# ") ? "cover" : "subtitle"))
    } else if line.hasPrefix("- ") {
        current.append(Block(text: "• " + String(line.dropFirst(2)), kind: "bullet"))
    } else if !line.trimmingCharacters(in: .whitespaces).isEmpty {
        current.append(Block(text: line, kind: "paragraph"))
    }
}
if !currentTitle.isEmpty { sections.append((currentTitle, current)) }

let pageWidth: CGFloat = 595.0
let pageHeight: CGFloat = 842.0
let margin: CGFloat = 50.0
let contentWidth = pageWidth - margin * 2
let colors = (
    blue: NSColor(calibratedRed: 0.027, green: 0.231, blue: 0.435, alpha: 1),
    sky: NSColor(calibratedRed: 0.145, green: 0.655, blue: 0.941, alpha: 1),
    green: NSColor(calibratedRed: 0.094, green: 0.651, blue: 0.416, alpha: 1),
    gold: NSColor(calibratedRed: 0.957, green: 0.725, blue: 0.259, alpha: 1),
    ink: NSColor(calibratedRed: 0.078, green: 0.145, blue: 0.212, alpha: 1),
    muted: NSColor(calibratedRed: 0.31, green: 0.41, blue: 0.47, alpha: 1),
    pale: NSColor(calibratedRed: 0.94, green: 0.975, blue: 0.985, alpha: 1)
)

var mediaBox = CGRect(x: 0, y: 0, width: pageWidth, height: pageHeight)
let outputURL = URL(fileURLWithPath: outputPath)
guard let context = CGContext(outputURL as CFURL, mediaBox: &mediaBox, nil) else { fatalError("Could not create PDF context") }

func font(_ size: CGFloat, bold: Bool = false) -> NSFont { NSFont(name: bold ? "Helvetica-Bold" : "Helvetica", size: size) ?? NSFont.systemFont(ofSize: size, weight: bold ? .bold : .regular) }
func drawText(_ text: String, at point: CGPoint, width: CGFloat, size: CGFloat, color: NSColor, bold: Bool = false, lineSpacing: CGFloat = 3) -> CGFloat {
    let paragraph = NSMutableParagraphStyle(); paragraph.lineSpacing = lineSpacing; paragraph.paragraphSpacing = 5
    let attributes: [NSAttributedString.Key: Any] = [.font: font(size, bold: bold), .foregroundColor: color, .paragraphStyle: paragraph]
    let attributed = NSAttributedString(string: text, attributes: attributes)
    let bounds = attributed.boundingRect(with: CGSize(width: width, height: 2000), options: [.usesLineFragmentOrigin, .usesFontLeading])
    attributed.draw(in: CGRect(x: point.x, y: point.y - bounds.height, width: width, height: bounds.height))
    return bounds.height
}
func roundedBox(_ rect: CGRect, fill: NSColor, stroke: NSColor? = nil) {
    let path = NSBezierPath(roundedRect: rect, xRadius: 14, yRadius: 14); fill.setFill(); path.fill()
    if let stroke { stroke.setStroke(); path.lineWidth = 1; path.stroke() }
}
func header(_ title: String, page: Int) {
    colors.blue.setFill(); NSRect(x: 0, y: pageHeight - 50, width: pageWidth, height: 50).fill()
    _ = drawText("KODIQUEST TANZANIA", at: CGPoint(x: margin, y: pageHeight - 18), width: 250, size: 10, color: .white, bold: true)
    _ = drawText("USER MANUAL  •  \(page)", at: CGPoint(x: 390, y: pageHeight - 18), width: 155, size: 9, color: colors.gold, bold: true)
}
func footer() {
    colors.muted.setFill(); NSRect(x: margin, y: 30, width: contentWidth, height: 1).fill()
    _ = drawText("KodiQuest Tanzania • Mwongozo wa Mtumiaji • Prototype", at: CGPoint(x: margin, y: 22), width: contentWidth, size: 8, color: colors.muted)
}

var pageNumber = 0
func beginPage() { pageNumber += 1; context.beginPDFPage(nil); NSGraphicsContext.current = NSGraphicsContext(cgContext: context, flipped: false) }
func endPage() { footer(); context.endPDFPage() }

// Cover page
beginPage()
colors.blue.setFill(); NSRect(x: 0, y: 0, width: pageWidth, height: pageHeight).fill()
colors.sky.setFill(); NSRect(x: 0, y: 0, width: pageWidth, height: 225).fill()
_ = drawText("K", at: CGPoint(x: 52, y: 665), width: 54, size: 54, color: colors.gold, bold: true)
_ = drawText("odi", at: CGPoint(x: 98, y: 665), width: 150, size: 54, color: .white, bold: true)
_ = drawText("Quest", at: CGPoint(x: 235, y: 665), width: 190, size: 54, color: colors.gold, bold: true)
_ = drawText("TANZANIA", at: CGPoint(x: 58, y: 610), width: 300, size: 18, color: colors.sky, bold: true)
_ = drawText("USER MANUAL", at: CGPoint(x: 58, y: 540), width: 480, size: 35, color: .white, bold: true)
_ = drawText("Chagua Herufi, Jibu Swali, Jenga Taifa.", at: CGPoint(x: 60, y: 485), width: 450, size: 18, color: colors.gold, bold: true)
roundedBox(CGRect(x: 58, y: 318, width: 479, height: 106), fill: NSColor.white.withAlphaComponent(0.12), stroke: NSColor.white.withAlphaComponent(0.25))
_ = drawText("Mwongozo wa kutumia mchezo wa elimu ya kodi, Maktaba ya Kodi na sehemu ya Kodi Inajenga Taifa.", at: CGPoint(x: 78, y: 394), width: 440, size: 14, color: .white, lineSpacing: 6)
_ = drawText("Toleo la prototype • 31 Julai 2026", at: CGPoint(x: 60, y: 260), width: 350, size: 11, color: colors.gold, bold: true)
_ = drawText("Kwa elimu ya jumla pekee. Thibitisha taarifa za sasa kupitia TRA.", at: CGPoint(x: 60, y: 92), width: 460, size: 10, color: NSColor.white.withAlphaComponent(0.8))
endPage()

func screenshotPage(file: String, title: String, caption: String) {
    let path = (root as NSString).appendingPathComponent("assets/manual/\(file)")
    guard let image = NSImage(contentsOfFile: path) else { return }
    beginPage(); header("SCREENSHOTS", page: pageNumber)
    _ = drawText(title, at: CGPoint(x: margin, y: pageHeight - 82), width: contentWidth, size: 21, color: colors.blue, bold: true, lineSpacing: 2)
    roundedBox(CGRect(x: 84, y: 115, width: 427, height: 655), fill: colors.pale, stroke: NSColor(calibratedWhite: 0.86, alpha: 1))
    let sourceSize = image.size
    let maxWidth: CGFloat = 395; let maxHeight: CGFloat = 620
    let scale = min(maxWidth / sourceSize.width, maxHeight / sourceSize.height)
    let drawSize = CGSize(width: sourceSize.width * scale, height: sourceSize.height * scale)
    let drawRect = CGRect(x: (pageWidth - drawSize.width) / 2, y: 132, width: drawSize.width, height: drawSize.height)
    image.draw(in: drawRect, from: .zero, operation: .sourceOver, fraction: 1)
    _ = drawText(caption, at: CGPoint(x: margin, y: 96), width: contentWidth, size: 9.5, color: colors.muted, lineSpacing: 2)
    endPage()
}

screenshotPage(file: "kodiquest-welcome.png", title: "01  Karibu / Welcome", caption: "Ukurasa wa karibu wenye kuanza mchezo, Maktaba, Faida za Kodi, settings na Demo.")
screenshotPage(file: "kodiquest-map.png", title: "02  Ramani ya Safari", caption: "Ramani ya viwango, progress ya mchezaji na widget ya Kodi Inajenga Taifa.")
screenshotPage(file: "kodiquest-game.png", title: "03  Gameplay ya herufi", caption: "Swali, answer slots, timer, curved letter path, Joka Kodi na controls za chini.")
screenshotPage(file: "kodiquest-library.png", title: "04  Maktaba ya Kodi", caption: "Maktaba yenye summary/full lessons, search, categories na recommended learning.")
screenshotPage(file: "kodiquest-benefits.png", title: "05  Kodi Inajenga Taifa", caption: "Sehemu ya elimu kuhusu mapato ya pamoja, huduma za umma na maendeleo ya jamii.")

for (title, blocks) in sections {
    if title == "Mwongozo wa Mtumiaji" { continue }
    beginPage(); header(title, page: pageNumber)
    _ = drawText(title, at: CGPoint(x: margin, y: pageHeight - 82), width: contentWidth, size: 22, color: colors.blue, bold: true, lineSpacing: 2)
    var y: CGFloat = pageHeight - 120
    for block in blocks {
        let size: CGFloat = block.kind == "cover" ? 22 : block.kind == "subtitle" ? 15 : block.kind == "bullet" ? 10.5 : 11
        let color = block.kind == "cover" || block.kind == "subtitle" ? colors.blue : colors.ink
        let bold = block.kind == "cover" || block.kind == "subtitle"
        if block.kind == "bullet" { roundedBox(CGRect(x: margin - 5, y: y - 27, width: contentWidth + 10, height: 32), fill: colors.pale) }
        let height = drawText(block.text, at: CGPoint(x: margin + (block.kind == "bullet" ? 10 : 0), y: y), width: contentWidth - (block.kind == "bullet" ? 20 : 0), size: size, color: color, bold: bold, lineSpacing: block.kind == "paragraph" ? 4 : 2)
        y -= height + (block.kind == "cover" ? 15 : block.kind == "subtitle" ? 12 : 9)
        if y < 75 { endPage(); beginPage(); header(title + " (inaendelea)", page: pageNumber); y = pageHeight - 82 }
    }
    endPage()
}

context.closePDF()
print("Created \(outputPath)")
