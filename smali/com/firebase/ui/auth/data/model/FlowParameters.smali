.class public Lcom/firebase/ui/auth/data/model/FlowParameters;
.super Ljava/lang/Object;
.source "FlowParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/firebase/ui/auth/data/model/FlowParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final allowNewEmailAccounts:Z

.field public final appName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final enableCredentials:Z

.field public final enableHints:Z

.field public final logoId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public final privacyPolicyUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final providerInfo:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/firebase/ui/auth/AuthUI$IdpConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final termsOfServiceUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final themeId:I
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 126
    new-instance v0, Lcom/firebase/ui/auth/data/model/FlowParameters$1;

    invoke-direct {v0}, Lcom/firebase/ui/auth/data/model/FlowParameters$1;-><init>()V

    sput-object v0, Lcom/firebase/ui/auth/data/model/FlowParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/firebase/ui/auth/AuthUI$IdpConfig;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "appName cannot be null"

    const/4 v1, 0x0

    .line 72
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/firebase/ui/auth/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->appName:Ljava/lang/String;

    const-string p1, "providerInfo cannot be null"

    .line 73
    new-array v0, v1, [Ljava/lang/Object;

    .line 74
    invoke-static {p2, p1, v0}, Lcom/firebase/ui/auth/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 73
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->providerInfo:Ljava/util/List;

    .line 75
    iput p3, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->themeId:I

    .line 76
    iput p4, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->logoId:I

    .line 77
    iput-object p5, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->termsOfServiceUrl:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->privacyPolicyUrl:Ljava/lang/String;

    .line 79
    iput-boolean p7, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->enableCredentials:Z

    .line 80
    iput-boolean p8, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->enableHints:Z

    .line 81
    iput-boolean p9, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->allowNewEmailAccounts:Z

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/firebase/ui/auth/data/model/FlowParameters;
    .locals 1

    const-string v0, "extra_flow_params"

    .line 95
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/firebase/ui/auth/data/model/FlowParameters;

    return-object p0
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/firebase/ui/auth/data/model/FlowParameters;
    .locals 1

    const-string v0, "extra_flow_params"

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/firebase/ui/auth/data/model/FlowParameters;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_flow_params"

    .line 104
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 110
    iget-object p2, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->providerInfo:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 112
    iget p2, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->themeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget p2, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->logoId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object p2, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->termsOfServiceUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->privacyPolicyUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-boolean p2, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->enableCredentials:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-boolean p2, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->enableHints:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-boolean p2, p0, Lcom/firebase/ui/auth/data/model/FlowParameters;->allowNewEmailAccounts:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
