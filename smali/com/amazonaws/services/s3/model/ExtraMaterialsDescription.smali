.class public Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;
.super Ljava/lang/Object;
.source "ExtraMaterialsDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;
    }
.end annotation


# static fields
.field public static final NONE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;


# instance fields
.field private final extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final resolve:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->NONE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->FAIL_FAST:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;-><init>(Ljava/util/Map;Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->extra:Ljava/util/Map;

    .line 65
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->resolve:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    return-void

    .line 62
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getConflictResolution()Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->resolve:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    return-object v0
.end method

.method public getMaterialDescription()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public mergeInto(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->extra:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    if-eqz p1, :cond_3

    .line 102
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    sget-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$1;->$SwitchMap$com$amazonaws$services$s3$model$ExtraMaterialsDescription$ConflictResolution:[I

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->resolve:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 126
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 121
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 122
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->extra:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 123
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 116
    :pswitch_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->extra:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 117
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 118
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 106
    :pswitch_2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->extra:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 108
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->extra:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 109
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p1

    if-eq v0, p1, :cond_2

    .line 110
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The supplemental material descriptions contains conflicting entries"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 103
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->extra:Ljava/util/Map;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
