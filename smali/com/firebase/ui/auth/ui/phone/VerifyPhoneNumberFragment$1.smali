.class Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment$1;
.super Ljava/lang/Object;
.source "VerifyPhoneNumberFragment.java"

# interfaces
.implements Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment$1;->this$0:Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDonePressed()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment$1;->this$0:Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;->access$000(Lcom/firebase/ui/auth/ui/phone/VerifyPhoneNumberFragment;)V

    return-void
.end method
