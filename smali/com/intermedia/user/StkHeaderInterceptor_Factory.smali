.class public final Lcom/intermedia/user/StkHeaderInterceptor_Factory;
.super Ljava/lang/Object;
.source "StkHeaderInterceptor_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/intermedia/user/StkHeaderInterceptor;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final userRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/UserRepository;",
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
            "Lcom/intermedia/user/UserRepository;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/intermedia/user/StkHeaderInterceptor_Factory;->userRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/intermedia/user/UserRepository;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/intermedia/user/StkHeaderInterceptor;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/intermedia/user/StkHeaderInterceptor_Factory;

    invoke-direct {v0, p0}, Lcom/intermedia/user/StkHeaderInterceptor_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newStkHeaderInterceptor(Lcom/intermedia/user/UserRepository;)Lcom/intermedia/user/StkHeaderInterceptor;
    .locals 1

    .line 31
    new-instance v0, Lcom/intermedia/user/StkHeaderInterceptor;

    invoke-direct {v0, p0}, Lcom/intermedia/user/StkHeaderInterceptor;-><init>(Lcom/intermedia/user/UserRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/intermedia/user/StkHeaderInterceptor;
    .locals 2

    .line 21
    new-instance v0, Lcom/intermedia/user/StkHeaderInterceptor;

    iget-object v1, p0, Lcom/intermedia/user/StkHeaderInterceptor_Factory;->userRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/user/UserRepository;

    invoke-direct {v0, v1}, Lcom/intermedia/user/StkHeaderInterceptor;-><init>(Lcom/intermedia/user/UserRepository;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/intermedia/user/StkHeaderInterceptor_Factory;->get()Lcom/intermedia/user/StkHeaderInterceptor;

    move-result-object v0

    return-object v0
.end method
