.class public Lcom/firebase/ui/auth/util/ui/PreambleHandler;
.super Ljava/lang/Object;
.source "PreambleHandler.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/ui/auth/util/ui/PreambleHandler$CustomTabsSpan;
    }
.end annotation


# static fields
.field private static final BTN_TARGET:Ljava/lang/String; = "%BTN%"

.field private static final PP_TARGET:Ljava/lang/String; = "%PP%"

.field private static final TOS_TARGET:Ljava/lang/String; = "%TOS%"


# instance fields
.field private mBuilder:Landroid/text/SpannableStringBuilder;

.field private final mButtonText:I

.field private final mContext:Landroid/content/Context;

.field private final mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

.field private final mLinkSpan:Landroid/text/style/ForegroundColorSpan;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;I)V
    .locals 0
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

    .line 39
    iput p3, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mButtonText:I

    .line 40
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    iget-object p2, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mContext:Landroid/content/Context;

    sget p3, Lcom/firebase/ui/auth/R$color;->fui_linkColor:I

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mLinkSpan:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/ui/auth/util/ui/PreambleHandler;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getPreambleStringWithTargets()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

    iget-object v0, v0, Lcom/firebase/ui/auth/data/model/FlowParameters;->termsOfServiceUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 97
    iget-object v2, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

    iget-object v2, v2, Lcom/firebase/ui/auth/data/model/FlowParameters;->privacyPolicyUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 100
    iget-object v0, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mContext:Landroid/content/Context;

    sget v2, Lcom/firebase/ui/auth/R$string;->fui_create_account_preamble_tos_and_pp:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "%BTN%"

    aput-object v6, v5, v4

    const-string v4, "%TOS%"

    aput-object v4, v5, v1

    const-string v1, "%PP%"

    aput-object v1, v5, v3

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mContext:Landroid/content/Context;

    sget v2, Lcom/firebase/ui/auth/R$string;->fui_create_account_preamble_tos_only:I

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "%BTN%"

    aput-object v5, v3, v4

    const-string v4, "%TOS%"

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v2, :cond_2

    .line 106
    iget-object v0, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mContext:Landroid/content/Context;

    sget v2, Lcom/firebase/ui/auth/R$string;->fui_create_account_preamble_pp_only:I

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "%BTN%"

    aput-object v5, v3, v4

    const-string v4, "%PP%"

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private replaceTarget(Ljava/lang/String;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 78
    iget-object v1, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {v1, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-void
.end method

.method private replaceUrlTarget(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 83
    iget-object v0, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 86
    iget-object v1, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {v1, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 88
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    .line 89
    iget-object p2, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mLinkSpan:Landroid/text/style/ForegroundColorSpan;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v0, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 90
    iget-object p2, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/firebase/ui/auth/util/ui/PreambleHandler$CustomTabsSpan;

    invoke-direct {v1, p0, p3}, Lcom/firebase/ui/auth/util/ui/PreambleHandler$CustomTabsSpan;-><init>(Lcom/firebase/ui/auth/util/ui/PreambleHandler;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v0, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private setPreamble(Landroid/widget/TextView;)V
    .locals 1

    .line 54
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 55
    iget-object v0, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setup(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;ILandroid/widget/TextView;)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 48
    new-instance v0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/firebase/ui/auth/util/ui/PreambleHandler;-><init>(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;I)V

    .line 49
    invoke-direct {v0, p3}, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->setPreamble(Landroid/widget/TextView;)V

    .line 50
    invoke-direct {v0}, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->setupCreateAccountPreamble()V

    return-void
.end method

.method private setupCreateAccountPreamble()V
    .locals 3

    .line 59
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->getPreambleStringWithTargets()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mBuilder:Landroid/text/SpannableStringBuilder;

    const-string v0, "%BTN%"

    .line 66
    iget v1, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mButtonText:I

    invoke-direct {p0, v0, v1}, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->replaceTarget(Ljava/lang/String;I)V

    const-string v0, "%TOS%"

    .line 67
    sget v1, Lcom/firebase/ui/auth/R$string;->fui_terms_of_service:I

    iget-object v2, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

    iget-object v2, v2, Lcom/firebase/ui/auth/data/model/FlowParameters;->termsOfServiceUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->replaceUrlTarget(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "%PP%"

    .line 71
    sget v1, Lcom/firebase/ui/auth/R$string;->fui_privacy_policy:I

    iget-object v2, p0, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

    iget-object v2, v2, Lcom/firebase/ui/auth/data/model/FlowParameters;->privacyPolicyUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->replaceUrlTarget(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
