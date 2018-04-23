.class public final Lcom/amazonaws/RequestClientOptions;
.super Ljava/lang/Object;
.source "RequestClientOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/RequestClientOptions$Marker;
    }
.end annotation


# static fields
.field public static final DEFAULT_STREAM_BUFFER_SIZE:I = 0x20001

.field private static final STREAM_BUFFER_SHIFT_VAL:I = 0x11


# instance fields
.field private final markers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazonaws/RequestClientOptions$Marker;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/amazonaws/RequestClientOptions$Marker;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/amazonaws/RequestClientOptions;->markers:Ljava/util/Map;

    return-void
.end method

.method private createUserAgentMarkerString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public addClientMarker(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    invoke-virtual {p0, p1}, Lcom/amazonaws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method public appendUserAgent(Ljava/lang/String;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/amazonaws/RequestClientOptions;->markers:Ljava/util/Map;

    sget-object v1, Lcom/amazonaws/RequestClientOptions$Marker;->USER_AGENT:Lcom/amazonaws/RequestClientOptions$Marker;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 101
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/RequestClientOptions;->createUserAgentMarkerString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    sget-object v0, Lcom/amazonaws/RequestClientOptions$Marker;->USER_AGENT:Lcom/amazonaws/RequestClientOptions$Marker;

    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/RequestClientOptions;->putClientMarker(Lcom/amazonaws/RequestClientOptions$Marker;Ljava/lang/String;)V

    return-void
.end method

.method public getClientMarker()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    sget-object v0, Lcom/amazonaws/RequestClientOptions$Marker;->USER_AGENT:Lcom/amazonaws/RequestClientOptions$Marker;

    invoke-virtual {p0, v0}, Lcom/amazonaws/RequestClientOptions;->getClientMarker(Lcom/amazonaws/RequestClientOptions$Marker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientMarker(Lcom/amazonaws/RequestClientOptions$Marker;)Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazonaws/RequestClientOptions;->markers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public putClientMarker(Lcom/amazonaws/RequestClientOptions$Marker;Ljava/lang/String;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazonaws/RequestClientOptions;->markers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
