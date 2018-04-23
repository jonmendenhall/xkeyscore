.class public Lcom/amazonaws/regions/RegionUtils;
.super Ljava/lang/Object;
.source "RegionUtils.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;

.field private static regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazonaws.request"

    .line 41
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/regions/RegionUtils;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegion(Ljava/lang/String;)Lcom/amazonaws/regions/Region;
    .locals 3

    .line 77
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->getRegions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/regions/Region;

    .line 78
    invoke-virtual {v1}, Lcom/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRegionByEndpoint(Ljava/lang/String;)Lcom/amazonaws/regions/Region;
    .locals 5

    .line 100
    invoke-static {p0}, Lcom/amazonaws/regions/RegionUtils;->getUriByEndpoint(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->getRegions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/regions/Region;

    .line 104
    invoke-virtual {v2}, Lcom/amazonaws/regions/Region;->getServiceEndpoints()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 105
    invoke-static {v4}, Lcom/amazonaws/regions/RegionUtils;->getUriByEndpoint(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v2

    .line 112
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No region found with any service for endpoint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized getRegions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/amazonaws/regions/RegionUtils;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/amazonaws/regions/RegionUtils;->regions:Ljava/util/List;

    if-nez v1, :cond_0

    .line 48
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->init()V

    .line 51
    :cond_0
    sget-object v1, Lcom/amazonaws/regions/RegionUtils;->regions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 46
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getRegionsForService(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/amazonaws/regions/RegionUtils;

    monitor-enter v0

    .line 62
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 63
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->getRegions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/regions/Region;

    .line 64
    invoke-virtual {v3, p0}, Lcom/amazonaws/regions/Region;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 61
    monitor-exit v0

    throw p0
.end method

.method private static getUriByEndpoint(Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    .line 189
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 191
    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse service endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized init()V
    .locals 4

    const-class v0, Lcom/amazonaws/regions/RegionUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "com.amazonaws.regions.RegionUtils.fileOverride"

    .line 125
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 127
    :try_start_1
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->loadRegionsFromOverrideFile()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 129
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Couldn\'t find regions override file specified"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 134
    :cond_0
    :goto_0
    sget-object v1, Lcom/amazonaws/regions/RegionUtils;->regions:Ljava/util/List;

    if-nez v1, :cond_1

    .line 135
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->initSDKRegions()V

    .line 138
    :cond_1
    sget-object v1, Lcom/amazonaws/regions/RegionUtils;->regions:Ljava/util/List;

    if-nez v1, :cond_2

    .line 139
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to initialize the regions."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 124
    monitor-exit v0

    throw v1
.end method

.method private static initRegions(Ljava/io/InputStream;)V
    .locals 2

    .line 163
    :try_start_0
    new-instance v0, Lcom/amazonaws/regions/RegionMetadataParser;

    invoke-direct {v0}, Lcom/amazonaws/regions/RegionMetadataParser;-><init>()V

    .line 164
    invoke-virtual {v0, p0}, Lcom/amazonaws/regions/RegionMetadataParser;->parseRegionMetadata(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/amazonaws/regions/RegionUtils;->regions:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 166
    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Failed to parse regional endpoints"

    invoke-interface {v0, v1, p0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static initSDKRegions()V
    .locals 2

    .line 175
    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Initializing the regions with default regions"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 178
    :cond_0
    invoke-static {}, Lcom/amazonaws/regions/RegionDefaults;->getRegions()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/regions/RegionUtils;->regions:Ljava/util/List;

    return-void
.end method

.method private static loadRegionsFromOverrideFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "com.amazonaws.regions.RegionUtils.fileOverride"

    .line 144
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/amazonaws/regions/RegionUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    sget-object v1, Lcom/amazonaws/regions/RegionUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using local override of the regions file ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") to initiate regions data..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 150
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 152
    invoke-static {v0}, Lcom/amazonaws/regions/RegionUtils;->initRegions(Ljava/io/InputStream;)V

    return-void
.end method
