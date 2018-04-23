.class Lcom/firebase/ui/auth/util/CustomCountDownTimer$1;
.super Landroid/os/CountDownTimer;
.source "CustomCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/util/CustomCountDownTimer;->create(JJ)Landroid/os/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/util/CustomCountDownTimer;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/util/CustomCountDownTimer;JJ)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/firebase/ui/auth/util/CustomCountDownTimer$1;->this$0:Lcom/firebase/ui/auth/util/CustomCountDownTimer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/firebase/ui/auth/util/CustomCountDownTimer$1;->this$0:Lcom/firebase/ui/auth/util/CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->onFinish()V

    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/firebase/ui/auth/util/CustomCountDownTimer$1;->this$0:Lcom/firebase/ui/auth/util/CustomCountDownTimer;

    invoke-virtual {v0, p1, p2}, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->onTick(J)V

    return-void
.end method
