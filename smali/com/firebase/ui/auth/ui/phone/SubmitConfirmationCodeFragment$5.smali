.class Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$5;
.super Lcom/firebase/ui/auth/util/CustomCountDownTimer;
.source "SubmitConfirmationCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->createCountDownTimer(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;J)Lcom/firebase/ui/auth/util/CustomCountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mSubmitConfirmationCodeFragment:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

.field final synthetic this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

.field final synthetic val$fragment:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

.field final synthetic val$resendCode:Landroid/widget/TextView;

.field final synthetic val$timerText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;JJLcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$5;->this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    iput-object p6, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$5;->val$fragment:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    iput-object p7, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$5;->val$timerText:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$5;->val$resendCode:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/firebase/ui/auth/util/CustomCountDownTimer;-><init>(JJ)V

    .line 243
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$5;->val$fragment:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$5;->mSubmitConfirmationCodeFragment:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$5;->val$timerText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$5;->val$timerText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$5;->val$resendCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$5;->this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    invoke-static {v0, p1, p2}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->access$602(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;J)J

    .line 247
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$5;->mSubmitConfirmationCodeFragment:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    invoke-static {v0, p1, p2}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->access$700(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;J)V

    return-void
.end method
