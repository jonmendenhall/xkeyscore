.class Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$1;
.super Ljava/lang/Object;
.source "SubmitConfirmationCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->setupResendConfirmationCodeTextView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$1;->this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$1;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 143
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$1;->this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->access$000(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$1;->val$phoneNumber:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->verifyPhoneNumber(Ljava/lang/String;Z)V

    .line 144
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$1;->this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->access$100(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$1;->this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->access$200(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$1;->this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->access$200(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$1;->this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    sget v3, Lcom/firebase/ui/auth/R$string;->fui_resend_code_in:I

    invoke-virtual {v2, v3}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/16 v3, 0xf

    .line 147
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v0

    .line 146
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$1;->this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->access$300(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)Lcom/firebase/ui/auth/util/CustomCountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->renew()V

    return-void
.end method
