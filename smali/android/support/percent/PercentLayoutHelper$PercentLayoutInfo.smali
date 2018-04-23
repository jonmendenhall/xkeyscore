.class public Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
.super Ljava/lang/Object;
.source "PercentLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/percent/PercentLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PercentLayoutInfo"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public aspectRatio:F

.field public bottomMarginPercent:F

.field public endMarginPercent:F

.field public heightPercent:F

.field public leftMarginPercent:F

.field final mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

.field public rightMarginPercent:F

.field public startMarginPercent:F

.field public topMarginPercent:F

.field public widthPercent:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 434
    iput v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:F

    .line 435
    iput v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    .line 436
    iput v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:F

    .line 437
    iput v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:F

    .line 438
    iput v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:F

    .line 439
    iput v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:F

    .line 440
    iput v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:F

    .line 441
    iput v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:F

    .line 442
    new-instance v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;-><init>(II)V

    iput-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    return-void
.end method


# virtual methods
.method public fillLayoutParams(Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 5

    .line 453
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->width:I

    .line 454
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->height:I

    .line 460
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    .line 461
    invoke-static {v0}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->access$000(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v0, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->width:I

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 463
    :goto_0
    iget-object v4, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    .line 464
    invoke-static {v4}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->access$100(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v4, v4, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->height:I

    if-nez v4, :cond_3

    :cond_2
    iget v4, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_3

    move v1, v2

    .line 467
    :cond_3
    iget v4, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:F

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_4

    int-to-float p2, p2

    .line 468
    iget v4, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:F

    mul-float/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 471
    :cond_4
    iget p2, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    cmpl-float p2, p2, v3

    if-ltz p2, :cond_5

    int-to-float p2, p3

    .line 472
    iget p3, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 475
    :cond_5
    iget p2, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->aspectRatio:F

    cmpl-float p2, p2, v3

    if-ltz p2, :cond_7

    if-eqz v0, :cond_6

    .line 477
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p2, p2

    iget p3, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->aspectRatio:F

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 479
    iget-object p2, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    invoke-static {p2, v2}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->access$002(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;Z)Z

    :cond_6
    if-eqz v1, :cond_7

    .line 482
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p2, p2

    iget p3, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->aspectRatio:F

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 484
    iget-object p1, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    invoke-static {p1, v2}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->access$102(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;Z)Z

    :cond_7
    return-void
.end method

.method public fillMarginLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 3

    .line 511
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->fillLayoutParams(Landroid/view/ViewGroup$LayoutParams;II)V

    .line 514
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->leftMargin:I

    .line 515
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->topMargin:I

    .line 516
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->rightMargin:I

    .line 517
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->bottomMargin:I

    .line 518
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    .line 519
    invoke-static {p2}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    .line 518
    invoke-static {v0, v1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 520
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    .line 521
    invoke-static {p2}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    .line 520
    invoke-static {v0, v1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 523
    iget v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    int-to-float v0, p3

    .line 524
    iget v2, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 526
    :cond_0
    iget v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    int-to-float v0, p4

    .line 527
    iget v2, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 529
    :cond_1
    iget v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    int-to-float v0, p3

    .line 530
    iget v2, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 532
    :cond_2
    iget v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    int-to-float p4, p4

    .line 533
    iget v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:F

    mul-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_3
    const/4 p4, 0x0

    .line 536
    iget v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:F

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    if-ltz v0, :cond_4

    int-to-float p4, p3

    .line 537
    iget v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:F

    mul-float/2addr p4, v0

    .line 538
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    .line 537
    invoke-static {p2, p4}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    move p4, v2

    .line 541
    :cond_4
    iget v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    int-to-float p3, p3

    .line 542
    iget p4, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:F

    mul-float/2addr p3, p4

    .line 543
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 542
    invoke-static {p2, p3}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    move p4, v2

    :cond_5
    if-eqz p4, :cond_6

    if-eqz p1, :cond_6

    .line 550
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    .line 549
    invoke-static {p2, p1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->resolveLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    :cond_6
    return-void
.end method

.method public fillMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 501
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->fillMarginLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;II)V

    return-void
.end method

.method public restoreLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 590
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    invoke-static {v0}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->access$000(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v0, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 595
    :cond_0
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    invoke-static {v0}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->access$100(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v0, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 602
    :cond_1
    iget-object p1, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->access$002(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;Z)Z

    .line 603
    iget-object p1, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    invoke-static {p1, v0}, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->access$102(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;Z)Z

    return-void
.end method

.method public restoreMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 573
    invoke-virtual {p0, p1}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->restoreLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v0, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->leftMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 575
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v0, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->topMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 576
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v0, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->rightMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 577
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget v0, v0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->bottomMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 578
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    .line 579
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    .line 578
    invoke-static {p1, v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 580
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    .line 581
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    .line 580
    invoke-static {p1, v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "PercentLayoutInformation width: %f height %f, margins (%f, %f,  %f, %f, %f, %f)"

    const/16 v1, 0x8

    .line 560
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:F

    .line 561
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:F

    .line 562
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget v2, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget v2, p0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:F

    .line 563
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 560
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
