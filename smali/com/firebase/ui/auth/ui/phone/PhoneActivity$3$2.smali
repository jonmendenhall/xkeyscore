.class Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3$2;
.super Ljava/lang/Object;
.source "PhoneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;->onFailure(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3$2;->this$1:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 364
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3$2;->this$1:Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;

    iget-object p1, p1, Lcom/firebase/ui/auth/ui/phone/PhoneActivity$3;->this$0:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->access$800(Lcom/firebase/ui/auth/ui/phone/PhoneActivity;)Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    move-result-object p1

    const-string p2, ""

    .line 365
    invoke-virtual {p1, p2}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->setConfirmationCode(Ljava/lang/String;)V

    return-void
.end method
