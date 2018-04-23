.class public Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;
.super Ljava/lang/Object;
.source "PhoneVerificationViewHost_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/login/PhoneVerificationViewHost;

.field private view2131362111:Landroid/view/View;

.field private view2131362111TextWatcher:Landroid/text/TextWatcher;

.field private view2131362278:Landroid/view/View;

.field private view2131362278TextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Lcom/intermedia/login/PhoneVerificationViewHost;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->target:Lcom/intermedia/login/PhoneVerificationViewHost;

    const-string v0, "field \'bgPatternImageView\'"

    .line 41
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0041

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->bgPatternImageView:Landroid/widget/ImageView;

    const-string v0, "field \'callMeButton\'"

    .line 42
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0051

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->callMeButton:Landroid/widget/Button;

    const-string v0, "field \'callMeDivider\'"

    const v1, 0x7f0a0052

    .line 43
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->callMeDivider:Landroid/view/View;

    const-string v0, "field \'countryCodeRecyclerView\'"

    .line 44
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0a0084

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->countryCodeRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'countryCodePickerButton\'"

    .line 45
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0085

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->countryCodePickerButton:Landroid/widget/Button;

    const-string v0, "field \'firstStepContainer\'"

    .line 46
    const-class v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a00bf

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->firstStepContainer:Landroid/view/ViewGroup;

    const-string v0, "field \'firstStepNextButton\'"

    .line 47
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a00c0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->firstStepNextButton:Landroid/widget/Button;

    const-string v0, "field \'phoneInputCountryCodeTextView\'"

    .line 48
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a013d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->phoneInputCountryCodeTextView:Landroid/widget/TextView;

    const-string v0, "field \'phoneNumberInput\' and method \'phoneNumberTextChanged\'"

    const v1, 0x7f0a013f

    .line 49
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'phoneNumberInput\'"

    .line 50
    const-class v3, Landroid/widget/EditText;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->phoneNumberInput:Landroid/widget/EditText;

    .line 51
    iput-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->view2131362111:Landroid/view/View;

    .line 52
    new-instance v1, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding$1;-><init>(Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;Lcom/intermedia/login/PhoneVerificationViewHost;)V

    iput-object v1, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->view2131362111TextWatcher:Landroid/text/TextWatcher;

    .line 66
    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->view2131362111TextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v0, "field \'phoneNumberProgressBar\'"

    .line 67
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a0140

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->phoneNumberProgressBar:Landroid/widget/ProgressBar;

    const-string v0, "field \'resendCodeButton\'"

    .line 68
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0159

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->resendCodeButton:Landroid/widget/Button;

    const-string v0, "field \'secondStepNextButton\'"

    .line 69
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0177

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->secondStepNextButton:Landroid/widget/Button;

    const-string v0, "field \'verificationCodeInput\' and method \'verificationCodeChanged\'"

    const v1, 0x7f0a01e6

    .line 70
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'verificationCodeInput\'"

    .line 71
    const-class v3, Landroid/widget/EditText;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->verificationCodeInput:Landroid/widget/EditText;

    .line 72
    iput-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->view2131362278:Landroid/view/View;

    .line 73
    new-instance v1, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding$2;-><init>(Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;Lcom/intermedia/login/PhoneVerificationViewHost;)V

    iput-object v1, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->view2131362278TextWatcher:Landroid/text/TextWatcher;

    .line 87
    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->view2131362278TextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v0, "field \'verificationMessageTextView\'"

    .line 88
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a01e7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->verificationMessageTextView:Landroid/widget/TextView;

    const-string v0, "field \'verificationProgressBar\'"

    .line 89
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a01e8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->verificationProgressBar:Landroid/widget/ProgressBar;

    const-string v0, "field \'viewPager\'"

    .line 90
    const-class v1, Landroid/support/v4/view/ViewPager;

    const v2, 0x7f0a01ea

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    iput-object p2, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->viewPager:Landroid/support/v4/view/ViewPager;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->target:Lcom/intermedia/login/PhoneVerificationViewHost;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 98
    iput-object v1, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->target:Lcom/intermedia/login/PhoneVerificationViewHost;

    .line 100
    iput-object v1, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->bgPatternImageView:Landroid/widget/ImageView;

    .line 101
    iput-object v1, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->callMeButton:Landroid/widget/Button;

    .line 102
    iput-object v1, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->callMeDivider:Landroid/view/View;

    .line 103
    iput-object v1, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->countryCodeRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 104
    iput-object v1, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->countryCodePickerButton:Landroid/widget/Button;

    .line 105
    iput-object v1, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->firstStepContainer:Landroid/view/ViewGroup;

    .line 106
    iput-object v1, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->firstStepNextButton:Landroid/widget/Button;

    .line 107
    iput-object v1, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->phoneInputCountryCodeTextView:Landroid/widget/TextView;

    .line 108
    iput-object v1, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->phoneNumberInput:Landroid/widget/EditText;

    .line 109
    iput-object v1, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->phoneNumberProgressBar:Landroid/widget/ProgressBar;

    .line 110
    iput-object v1, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->resendCodeButton:Landroid/widget/Button;

    .line 111
    iput-object v1, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->secondStepNextButton:Landroid/widget/Button;

    .line 112
    iput-object v1, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->verificationCodeInput:Landroid/widget/EditText;

    .line 113
    iput-object v1, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->verificationMessageTextView:Landroid/widget/TextView;

    .line 114
    iput-object v1, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->verificationProgressBar:Landroid/widget/ProgressBar;

    .line 115
    iput-object v1, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 117
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->view2131362111:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->view2131362111TextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    iput-object v1, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->view2131362111TextWatcher:Landroid/text/TextWatcher;

    .line 119
    iput-object v1, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->view2131362111:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->view2131362278:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->view2131362278TextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    iput-object v1, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->view2131362278TextWatcher:Landroid/text/TextWatcher;

    .line 122
    iput-object v1, p0, Lcom/intermedia/login/PhoneVerificationViewHost_ViewBinding;->view2131362278:Landroid/view/View;

    return-void
.end method
