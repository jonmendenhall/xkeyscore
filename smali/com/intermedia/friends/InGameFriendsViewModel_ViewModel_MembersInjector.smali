.class public final Lcom/intermedia/friends/InGameFriendsViewModel_ViewModel_MembersInjector;
.super Ljava/lang/Object;
.source "InGameFriendsViewModel_ViewModel_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final authedApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/intermedia/friends/InGameFriendsViewModel_ViewModel_MembersInjector;->authedApiServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/intermedia/friends/InGameFriendsViewModel_ViewModel_MembersInjector;

    invoke-direct {v0, p0}, Lcom/intermedia/friends/InGameFriendsViewModel_ViewModel_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAuthedApiService(Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/network/AuthedApiService;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/network/AuthedApiService;

    iput-object p1, p0, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->authedApiService:Lcom/intermedia/network/AuthedApiService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;)V
    .locals 1

    if-nez p1, :cond_0

    .line 30
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot inject members into a null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/intermedia/friends/InGameFriendsViewModel_ViewModel_MembersInjector;->authedApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/network/AuthedApiService;

    iput-object v0, p1, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;->authedApiService:Lcom/intermedia/network/AuthedApiService;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;

    invoke-virtual {p0, p1}, Lcom/intermedia/friends/InGameFriendsViewModel_ViewModel_MembersInjector;->injectMembers(Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;)V

    return-void
.end method
