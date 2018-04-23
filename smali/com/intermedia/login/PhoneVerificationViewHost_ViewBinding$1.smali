.class Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding$1;
.super Ljava/lang/Object;
.source "PhoneVerificationViewHost_ViewBinding.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;-><init>(Lcom/intermedia/login/PhoneVerificationViewHost;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;

.field final synthetic val$target:Lcom/intermedia/login/PhoneVerificationViewHost;


# direct methods
.method constructor <init>(Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;Lcom/intermedia/login/PhoneVerificationViewHost;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding$1;->this$0:Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;

    iput-object p2, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding$1;->val$target:Lcom/intermedia/login/PhoneVerificationViewHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 55
    iget-object p2, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding$1;->val$target:Lcom/intermedia/login/PhoneVerificationViewHost;

    invoke-virtual {p2, p1}, Lcom/intermedia/login/PhoneVerificationViewHost;->phoneNumberTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method
