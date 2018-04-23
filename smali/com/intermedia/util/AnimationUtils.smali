.class public final Lcom/intermedia/util/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# static fields
.field public static final BG_ROTATION_DURATION:J

.field public static final BG_ROTATION_SLOW_DURATION:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/intermedia/util/AnimationUtils;->BG_ROTATION_DURATION:J

    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/intermedia/util/AnimationUtils;->BG_ROTATION_SLOW_DURATION:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static centeredRotationAnim(J)Landroid/view/animation/Animation;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 66
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 69
    invoke-virtual {v7, p0, p1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 70
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, p0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 p0, -0x1

    .line 71
    invoke-virtual {v7, p0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    return-object v7
.end method

.method public static fadeAnim(J)Landroid/view/animation/Animation;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 23
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 24
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method public static modalAppearAnim()Landroid/view/animation/Animation;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 49
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v0, 0x12c

    .line 51
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 52
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v9
.end method

.method public static modalDisappearAnim(I)Landroid/view/animation/Animation;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 58
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0xc8

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 60
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public static questionStatusBadgeScaleAnim()Landroid/view/animation/Animation;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 30
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3fb33333    # 1.4f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3fb33333    # 1.4f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v0, 0xc8

    .line 32
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v0, 0x1

    .line 33
    invoke-virtual {v9, v0}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    const/4 v0, 0x2

    .line 34
    invoke-virtual {v9, v0}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    return-object v9
.end method

.method public static questionStatusBadgeShakeAnim()Landroid/view/animation/Animation;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 40
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ee00000    # -10.0f

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {v0, v2, v3, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x64

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v1, 0x4

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    const/4 v1, 0x2

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    return-object v0
.end method
