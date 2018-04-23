.class public abstract Lcom/firebase/ui/auth/util/CustomCountDownTimer;
.super Ljava/lang/Object;
.source "CustomCountDownTimer.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mCountDownInterval:J

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private final mMillisInFuture:J


# direct methods
.method protected constructor <init>(JJ)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->mMillisInFuture:J

    .line 29
    iput-wide p3, p0, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->mCountDownInterval:J

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->create(JJ)Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private create(JJ)Landroid/os/CountDownTimer;
    .locals 7

    .line 44
    new-instance v6, Lcom/firebase/ui/auth/util/CustomCountDownTimer$1;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/firebase/ui/auth/util/CustomCountDownTimer$1;-><init>(Lcom/firebase/ui/auth/util/CustomCountDownTimer;JJ)V

    return-object v6
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method public abstract onFinish()V
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation
.end method

.method protected abstract onTick(J)V
.end method

.method public renew()V
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->mMillisInFuture:J

    invoke-virtual {p0, v0, v1}, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->update(J)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public update(J)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 35
    iget-wide v0, p0, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->mCountDownInterval:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->create(JJ)Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 36
    iget-object p1, p0, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
