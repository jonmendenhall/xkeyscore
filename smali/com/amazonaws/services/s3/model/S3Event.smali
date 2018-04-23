.class public final enum Lcom/amazonaws/services/s3/model/S3Event;
.super Ljava/lang/Enum;
.source "S3Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/S3Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectCreated:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectCreatedByCompleteMultipartUpload:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectCreatedByCopy:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectCreatedByPost:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectCreatedByPut:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectRemoved:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectRemovedDelete:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectRemovedDeleteMarkerCreated:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ReducedRedundancyLostObject:Lcom/amazonaws/services/s3/model/S3Event;


# instance fields
.field private final event:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 22
    new-instance v0, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v1, "ReducedRedundancyLostObject"

    const-string v2, "s3:ReducedRedundancyLostObject"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/S3Event;->ReducedRedundancyLostObject:Lcom/amazonaws/services/s3/model/S3Event;

    .line 24
    new-instance v0, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v1, "ObjectCreated"

    const-string v2, "s3:ObjectCreated:*"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreated:Lcom/amazonaws/services/s3/model/S3Event;

    .line 26
    new-instance v0, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v1, "ObjectCreatedByPut"

    const-string v2, "s3:ObjectCreated:Put"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreatedByPut:Lcom/amazonaws/services/s3/model/S3Event;

    .line 28
    new-instance v0, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v1, "ObjectCreatedByPost"

    const-string v2, "s3:ObjectCreated:Post"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreatedByPost:Lcom/amazonaws/services/s3/model/S3Event;

    .line 30
    new-instance v0, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v1, "ObjectCreatedByCopy"

    const-string v2, "s3:ObjectCreated:Copy"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreatedByCopy:Lcom/amazonaws/services/s3/model/S3Event;

    .line 32
    new-instance v0, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v1, "ObjectCreatedByCompleteMultipartUpload"

    const-string v2, "s3:ObjectCreated:CompleteMultipartUpload"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreatedByCompleteMultipartUpload:Lcom/amazonaws/services/s3/model/S3Event;

    .line 34
    new-instance v0, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v1, "ObjectRemoved"

    const-string v2, "s3:ObjectRemoved:*"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/S3Event;->ObjectRemoved:Lcom/amazonaws/services/s3/model/S3Event;

    .line 36
    new-instance v0, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v1, "ObjectRemovedDelete"

    const-string v2, "s3:ObjectRemoved:Delete"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/S3Event;->ObjectRemovedDelete:Lcom/amazonaws/services/s3/model/S3Event;

    .line 38
    new-instance v0, Lcom/amazonaws/services/s3/model/S3Event;

    const-string v1, "ObjectRemovedDeleteMarkerCreated"

    const-string v2, "s3:ObjectRemoved:DeleteMarkerCreated"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/S3Event;->ObjectRemovedDeleteMarkerCreated:Lcom/amazonaws/services/s3/model/S3Event;

    const/16 v0, 0x9

    .line 21
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/S3Event;

    sget-object v1, Lcom/amazonaws/services/s3/model/S3Event;->ReducedRedundancyLostObject:Lcom/amazonaws/services/s3/model/S3Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreated:Lcom/amazonaws/services/s3/model/S3Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreatedByPut:Lcom/amazonaws/services/s3/model/S3Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreatedByPost:Lcom/amazonaws/services/s3/model/S3Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreatedByCopy:Lcom/amazonaws/services/s3/model/S3Event;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreatedByCompleteMultipartUpload:Lcom/amazonaws/services/s3/model/S3Event;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazonaws/services/s3/model/S3Event;->ObjectRemoved:Lcom/amazonaws/services/s3/model/S3Event;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazonaws/services/s3/model/S3Event;->ObjectRemovedDelete:Lcom/amazonaws/services/s3/model/S3Event;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amazonaws/services/s3/model/S3Event;->ObjectRemovedDeleteMarkerCreated:Lcom/amazonaws/services/s3/model/S3Event;

    aput-object v1, v0, v11

    sput-object v0, Lcom/amazonaws/services/s3/model/S3Event;->$VALUES:[Lcom/amazonaws/services/s3/model/S3Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/S3Event;->event:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3Event;
    .locals 1

    .line 21
    const-class v0, Lcom/amazonaws/services/s3/model/S3Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/S3Event;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/S3Event;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazonaws/services/s3/model/S3Event;->$VALUES:[Lcom/amazonaws/services/s3/model/S3Event;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/S3Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/S3Event;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Event;->event:Ljava/lang/String;

    return-object v0
.end method
