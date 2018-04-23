.class public Landroid/support/percent/PercentLayoutHelper;
.super Ljava/lang/Object;
.source "PercentLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;,
        Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;,
        Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PercentLayout"

.field private static final VERBOSE:Z = false


# instance fields
.field private final mHost:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 133
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "host must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_0
    iput-object p1, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    return-void
.end method

.method public static fetchWidthAndHeight(Landroid/view/ViewGroup$LayoutParams;Landroid/content/res/TypedArray;II)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 146
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public static getPercentLayoutInfo(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;
    .locals 4

    .line 198
    sget-object v0, Landroid/support/percent/R$styleable;->PercentLayout_Layout:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 199
    sget p1, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_widthPercent:I

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v2, p1, v0

    if-eqz v2, :cond_0

    .line 205
    new-instance v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v2}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    .line 206
    iput p1, v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:F

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 208
    :goto_0
    sget p1, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_heightPercent:I

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 213
    :cond_1
    new-instance v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v2}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    .line 214
    :goto_1
    iput p1, v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    .line 216
    :cond_2
    sget p1, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_marginPercent:I

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    .line 221
    :cond_3
    new-instance v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v2}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    .line 222
    :goto_2
    iput p1, v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:F

    .line 223
    iput p1, v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:F

    .line 224
    iput p1, v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:F

    .line 225
    iput p1, v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:F

    .line 227
    :cond_4
    sget p1, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_marginLeftPercent:I

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_6

    if-eqz v2, :cond_5

    goto :goto_3

    .line 233
    :cond_5
    new-instance v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v2}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    .line 234
    :goto_3
    iput p1, v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:F

    .line 236
    :cond_6
    sget p1, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_marginTopPercent:I

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_8

    if-eqz v2, :cond_7

    goto :goto_4

    .line 242
    :cond_7
    new-instance v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v2}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    .line 243
    :goto_4
    iput p1, v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:F

    .line 245
    :cond_8
    sget p1, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_marginRightPercent:I

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_a

    if-eqz v2, :cond_9

    goto :goto_5

    .line 251
    :cond_9
    new-instance v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v2}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    .line 252
    :goto_5
    iput p1, v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:F

    .line 254
    :cond_a
    sget p1, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_marginBottomPercent:I

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_c

    if-eqz v2, :cond_b

    goto :goto_6

    .line 260
    :cond_b
    new-instance v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v2}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    .line 261
    :goto_6
    iput p1, v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:F

    .line 263
    :cond_c
    sget p1, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_marginStartPercent:I

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_e

    if-eqz v2, :cond_d

    goto :goto_7

    .line 269
    :cond_d
    new-instance v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v2}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    .line 270
    :goto_7
    iput p1, v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:F

    .line 272
    :cond_e
    sget p1, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_marginEndPercent:I

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_10

    if-eqz v2, :cond_f

    goto :goto_8

    .line 278
    :cond_f
    new-instance v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v2}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    .line 279
    :goto_8
    iput p1, v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:F

    .line 282
    :cond_10
    sget p1, Landroid/support/percent/R$styleable;->PercentLayout_Layout_layout_aspectRatio:I

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_12

    if-eqz v2, :cond_11

    goto :goto_9

    .line 287
    :cond_11
    new-instance v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v2}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    .line 288
    :goto_9
    iput p1, v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->aspectRatio:F

    .line 291
    :cond_12
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2
.end method

.method private static shouldHandleMeasuredHeightTooSmall(Landroid/view/View;Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;)Z
    .locals 1

    .line 377
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p0

    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    const/high16 v0, 0x1000000

    if-ne p0, v0, :cond_0

    .line 378
    iget p0, p1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    iget-object p0, p1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget p0, p0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->height:I

    const/4 p1, -0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static shouldHandleMeasuredWidthTooSmall(Landroid/view/View;Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;)Z
    .locals 1

    .line 371
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p0

    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    const/high16 v0, 0x1000000

    if-ne p0, v0, :cond_0

    .line 372
    iget p0, p1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    iget-object p0, p1, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    iget p0, p0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->width:I

    const/4 p1, -0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public adjustChildren(II)V
    .locals 6

    .line 163
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    .line 164
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 165
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    .line 166
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    .line 167
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 168
    iget-object v2, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 173
    instance-of v4, v3, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;

    if-eqz v4, :cond_1

    .line 174
    move-object v4, v3

    check-cast v4, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;

    .line 175
    invoke-interface {v4}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;->getPercentLayoutInfo()Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 180
    instance-of v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_0

    .line 181
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4, v2, v3, p1, p2}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->fillMarginLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;II)V

    goto :goto_1

    .line 184
    :cond_0
    invoke-virtual {v4, v3, p1, p2}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->fillLayoutParams(Landroid/view/ViewGroup$LayoutParams;II)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public handleMeasuredStateTooSmall()Z
    .locals 9

    .line 343
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 344
    iget-object v3, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 345
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 349
    instance-of v5, v4, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 350
    move-object v5, v4

    check-cast v5, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;

    .line 351
    invoke-interface {v5}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;->getPercentLayoutInfo()Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 353
    invoke-static {v3, v5}, Landroid/support/percent/PercentLayoutHelper;->shouldHandleMeasuredWidthTooSmall(Landroid/view/View;Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;)Z

    move-result v7

    const/4 v8, -0x2

    if-eqz v7, :cond_0

    .line 355
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v2, v6

    .line 357
    :cond_0
    invoke-static {v3, v5}, Landroid/support/percent/PercentLayoutHelper;->shouldHandleMeasuredHeightTooSmall(Landroid/view/View;Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v2, v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public restoreOriginalParams()V
    .locals 5

    .line 304
    iget-object v0, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 305
    iget-object v2, p0, Landroid/support/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 306
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 310
    instance-of v3, v2, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;

    if-eqz v3, :cond_1

    .line 311
    move-object v3, v2

    check-cast v3, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;

    .line 312
    invoke-interface {v3}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutParams;->getPercentLayoutInfo()Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 317
    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_0

    .line 318
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3, v2}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->restoreMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_1

    .line 320
    :cond_0
    invoke-virtual {v3, v2}, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->restoreLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
