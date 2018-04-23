.class public final Lcom/intermedia/DaggerApplicationComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerApplicationComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/DaggerApplicationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private applicationModule:Lcom/intermedia/injection/ApplicationModule;

.field private externalApplicationModule:Lcom/intermedia/ExternalApplicationModule;

.field private httpModule:Lcom/intermedia/injection/HttpModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intermedia/DaggerApplicationComponent$1;)V
    .locals 0

    .line 357
    invoke-direct {p0}, Lcom/intermedia/DaggerApplicationComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/intermedia/DaggerApplicationComponent$Builder;)Lcom/intermedia/injection/ApplicationModule;
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent$Builder;->applicationModule:Lcom/intermedia/injection/ApplicationModule;

    return-object p0
.end method

.method static synthetic access$200(Lcom/intermedia/DaggerApplicationComponent$Builder;)Lcom/intermedia/injection/HttpModule;
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent$Builder;->httpModule:Lcom/intermedia/injection/HttpModule;

    return-object p0
.end method

.method static synthetic access$300(Lcom/intermedia/DaggerApplicationComponent$Builder;)Lcom/intermedia/ExternalApplicationModule;
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/intermedia/DaggerApplicationComponent$Builder;->externalApplicationModule:Lcom/intermedia/ExternalApplicationModule;

    return-object p0
.end method


# virtual methods
.method public applicationModule(Lcom/intermedia/injection/ApplicationModule;)Lcom/intermedia/DaggerApplicationComponent$Builder;
    .locals 0

    .line 386
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/injection/ApplicationModule;

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$Builder;->applicationModule:Lcom/intermedia/injection/ApplicationModule;

    return-object p0
.end method

.method public build()Lcom/intermedia/ApplicationComponent;
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$Builder;->applicationModule:Lcom/intermedia/injection/ApplicationModule;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/intermedia/injection/ApplicationModule;

    .line 369
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$Builder;->httpModule:Lcom/intermedia/injection/HttpModule;

    if-nez v0, :cond_1

    .line 372
    new-instance v0, Lcom/intermedia/injection/HttpModule;

    invoke-direct {v0}, Lcom/intermedia/injection/HttpModule;-><init>()V

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$Builder;->httpModule:Lcom/intermedia/injection/HttpModule;

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$Builder;->externalApplicationModule:Lcom/intermedia/ExternalApplicationModule;

    if-nez v0, :cond_2

    .line 375
    new-instance v0, Lcom/intermedia/ExternalApplicationModule;

    invoke-direct {v0}, Lcom/intermedia/ExternalApplicationModule;-><init>()V

    iput-object v0, p0, Lcom/intermedia/DaggerApplicationComponent$Builder;->externalApplicationModule:Lcom/intermedia/ExternalApplicationModule;

    .line 377
    :cond_2
    new-instance v0, Lcom/intermedia/DaggerApplicationComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/intermedia/DaggerApplicationComponent;-><init>(Lcom/intermedia/DaggerApplicationComponent$Builder;Lcom/intermedia/DaggerApplicationComponent$1;)V

    return-object v0
.end method

.method public externalApplicationModule(Lcom/intermedia/ExternalApplicationModule;)Lcom/intermedia/DaggerApplicationComponent$Builder;
    .locals 0

    .line 381
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/ExternalApplicationModule;

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$Builder;->externalApplicationModule:Lcom/intermedia/ExternalApplicationModule;

    return-object p0
.end method

.method public httpModule(Lcom/intermedia/injection/HttpModule;)Lcom/intermedia/DaggerApplicationComponent$Builder;
    .locals 0

    .line 391
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/injection/HttpModule;

    iput-object p1, p0, Lcom/intermedia/DaggerApplicationComponent$Builder;->httpModule:Lcom/intermedia/injection/HttpModule;

    return-object p0
.end method
