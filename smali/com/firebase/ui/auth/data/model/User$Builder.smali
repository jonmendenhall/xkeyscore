.class public Lcom/firebase/ui/auth/data/model/User$Builder;
.super Ljava/lang/Object;
.source "User.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/auth/data/model/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEmail:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhotoUri:Landroid/net/Uri;

.field private mProviderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/firebase/ui/auth/data/model/User$Builder;->mProviderId:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/firebase/ui/auth/data/model/User$Builder;->mEmail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/firebase/ui/auth/data/model/User;
    .locals 8

    .line 161
    new-instance v7, Lcom/firebase/ui/auth/data/model/User;

    iget-object v1, p0, Lcom/firebase/ui/auth/data/model/User$Builder;->mProviderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/firebase/ui/auth/data/model/User$Builder;->mEmail:Ljava/lang/String;

    iget-object v3, p0, Lcom/firebase/ui/auth/data/model/User$Builder;->mPhoneNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/firebase/ui/auth/data/model/User$Builder;->mName:Ljava/lang/String;

    iget-object v5, p0, Lcom/firebase/ui/auth/data/model/User$Builder;->mPhotoUri:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/firebase/ui/auth/data/model/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/firebase/ui/auth/data/model/User$1;)V

    return-object v7
.end method

.method public setName(Ljava/lang/String;)Lcom/firebase/ui/auth/data/model/User$Builder;
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/firebase/ui/auth/data/model/User$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/firebase/ui/auth/data/model/User$Builder;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/firebase/ui/auth/data/model/User$Builder;->mPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setPhotoUri(Landroid/net/Uri;)Lcom/firebase/ui/auth/data/model/User$Builder;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/firebase/ui/auth/data/model/User$Builder;->mPhotoUri:Landroid/net/Uri;

    return-object p0
.end method
