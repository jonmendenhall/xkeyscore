.class Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$4;
.super Ljava/lang/Object;
.source "SubmitConfirmationCodeFragment.java"

# interfaces
.implements Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->setupConfirmationCodeEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$4;->this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDonePressed()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$4;->this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->access$500(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$4;->this$0:Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->access$400(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)V

    :cond_0
    return-void
.end method
