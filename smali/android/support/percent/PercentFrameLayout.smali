.class public Landroid/support/percent/PercentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PercentFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/percent/PercentFrameLayout$LayoutParams;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mHelper:Landroid/support/percent/PercentLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance p1, Landroid/support/percent/PercentLayoutHelper;

    invoke-direct {p1, p0}, Landroid/support/percent/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroid/support/percent/PercentFrameLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    new-instance p1, Landroid/support/percent/PercentLayoutHelper;

    invoke-direct {p1, p0}, Landroid/support/percent/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroid/support/percent/PercentFrameLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    new-instance p1, Landroid/support/percent/PercentLayoutHelper;

    invoke-direct {p1, p0}, Landroid/support/percent/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroid/support/percent/PercentFrameLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/support/percent/PercentFrameLayout$LayoutParams;
    .locals 2

    .line 149
    new-instance v0, Landroid/support/percent/PercentFrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/support/percent/PercentFrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 131
    invoke-virtual {p0}, Landroid/support/percent/PercentFrameLayout;->generateDefaultLayoutParams()Landroid/support/percent/PercentFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 131
    invoke-virtual {p0}, Landroid/support/percent/PercentFrameLayout;->generateDefaultLayoutParams()Landroid/support/percent/PercentFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/percent/PercentFrameLayout$LayoutParams;
    .locals 2

    .line 154
    new-instance v0, Landroid/support/percent/PercentFrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/percent/PercentFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/percent/PercentFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Landroid/support/percent/PercentFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/percent/PercentFrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Landroid/support/percent/PercentFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/percent/PercentFrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 168
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 169
    iget-object p1, p0, Landroid/support/percent/PercentFrameLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    invoke-virtual {p1}, Landroid/support/percent/PercentLayoutHelper;->restoreOriginalParams()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 159
    iget-object v0, p0, Landroid/support/percent/PercentFrameLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/percent/PercentLayoutHelper;->adjustChildren(II)V

    .line 160
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 161
    iget-object v0, p0, Landroid/support/percent/PercentFrameLayout;->mHelper:Landroid/support/percent/PercentLayoutHelper;

    invoke-virtual {v0}, Landroid/support/percent/PercentLayoutHelper;->handleMeasuredStateTooSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method
