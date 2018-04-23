.class public final enum Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;
.super Ljava/lang/Enum;
.source "AnalyticsS3ExportFileFormat.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;

.field public static final enum CSV:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;


# instance fields
.field private final format:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;

    const-string v1, "CSV"

    const-string v2, "CSV"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;->CSV:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;

    const/4 v0, 0x1

    .line 22
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;

    sget-object v1, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;->CSV:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;->$VALUES:[Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;->format:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;
    .locals 1

    .line 22
    const-class v0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;->$VALUES:[Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3ExportFileFormat;->format:Ljava/lang/String;

    return-object v0
.end method
