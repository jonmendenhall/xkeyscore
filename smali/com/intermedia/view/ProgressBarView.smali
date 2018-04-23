.class public Lcom/intermedia/view/ProgressBarView;
.super Landroid/widget/ProgressBar;
.source "ProgressBarView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/intermedia/view/ProgressBarView;->getMeasuredWidth()I

    move-result v0

    .line 28
    invoke-virtual {p0}, Lcom/intermedia/view/ProgressBarView;->getMeasuredHeight()I

    move-result v1

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 30
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 31
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->draw(Landroid/graphics/Canvas;)V

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
